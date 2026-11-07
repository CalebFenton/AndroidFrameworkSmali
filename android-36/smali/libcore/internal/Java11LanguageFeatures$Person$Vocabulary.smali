.class Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;
.super Ljava/lang/Object;
.source "Java11LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java11LanguageFeatures$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vocabulary"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Llibcore/internal/Java11LanguageFeatures$Person;


# direct methods
.method private constructor blacklist <init>(Llibcore/internal/Java11LanguageFeatures$Person;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;->this$0:Llibcore/internal/Java11LanguageFeatures$Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Llibcore/internal/Java11LanguageFeatures$Person;Llibcore/internal/Java11LanguageFeatures-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;-><init>(Llibcore/internal/Java11LanguageFeatures$Person;)V

    return-void
.end method

.method private blacklist greet()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 70
    const-class v0, Llibcore/internal/Java11LanguageFeatures$Person;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71
    .local v0, "nameField":Ljava/lang/reflect/Field;
    iget-object v1, p0, Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;->this$0:Llibcore/internal/Java11LanguageFeatures$Person;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "nameValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hello "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
