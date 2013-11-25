import ceylon.language.meta { modules }
import ceylon.language.meta.declaration { ClassDeclaration }

shared final annotation class TestAnnotation()
		satisfies OptionalAnnotation<TestAnnotation, ClassDeclaration> {
}

"Run the module `dummy`."
shared void run() {
     for (value m in modules.list) {
    for (value member in m.members) {
      value components = member.annotatedMembers<ClassDeclaration, TestAnnotation>();
      print(components);
    }
  }
}