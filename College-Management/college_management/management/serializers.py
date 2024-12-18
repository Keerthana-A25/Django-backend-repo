from rest_framework import serializers
from .models import StudentDetails, users
from .models import SubjectDetails


# Serializer for StudentDetails
class StudentDetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = StudentDetails
        fields = '__all__'  # Include all fields from the model

# Serializer for User
class usersSerializer(serializers.ModelSerializer):
    class Meta:
        model = users
        fields = ['reg_emp_id', 'email']  # Include only the required fields
        
class SubjectDetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = SubjectDetails
        fields = '__all__'   # Include all fields from the model


