.class public Llibcore/internal/Java11LanguageFeatures$Person;
.super Ljava/lang/Object;
.source "Java11LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java11LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Person"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;
    }
.end annotation


# instance fields
.field private final blacklist name:Ljava/lang/String;

.field private final blacklist vocabulary:Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;-><init>(Llibcore/internal/Java11LanguageFeatures$Person;Llibcore/internal/Java11LanguageFeatures-IA;)V

    iput-object v0, p0, Llibcore/internal/Java11LanguageFeatures$Person;->vocabulary:Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;

    .line 58
    iput-object p1, p0, Llibcore/internal/Java11LanguageFeatures$Person;->name:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist greet()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 63
    const-class v0, Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "greet"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    .local v0, "greetFn":Ljava/lang/reflect/Method;
    iget-object v2, p0, Llibcore/internal/Java11LanguageFeatures$Person;->vocabulary:Llibcore/internal/Java11LanguageFeatures$Person$Vocabulary;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
