from django_opensearch_dsl import Document
from django_opensearch_dsl.registries import registry
from django.contrib.auth.models import User


@registry.register_document
class UserDocument(Document):

    class Index:
        name = 'user'
        settings = {
            'number_of_shards': 1,
            'number_of_replicas': 0
        }

    class Django:
        model = User
        fields = [
            'first_name',
            'last_name',
            'last_login',
            'date_joined'
        ]
