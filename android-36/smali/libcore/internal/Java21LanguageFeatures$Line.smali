.class public final Llibcore/internal/Java21LanguageFeatures$Line;
.super Ljava/lang/Record;
.source "Java21LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Line"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "a",
        "b"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Llibcore/internal/Java21LanguageFeatures$Point;,
        Llibcore/internal/Java21LanguageFeatures$Point;
    }
.end annotation


# instance fields
.field private final blacklist a:Llibcore/internal/Java21LanguageFeatures$Point;

.field private final blacklist b:Llibcore/internal/Java21LanguageFeatures$Point;


# direct methods
.method public constructor blacklist <init>(Llibcore/internal/Java21LanguageFeatures$Point;Llibcore/internal/Java21LanguageFeatures$Point;)V
    .registers 3
    .param p1, "a"    # Llibcore/internal/Java21LanguageFeatures$Point;
    .param p2, "b"    # Llibcore/internal/Java21LanguageFeatures$Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Llibcore/internal/Java21LanguageFeatures$Line;->a:Llibcore/internal/Java21LanguageFeatures$Point;

    iput-object p2, p0, Llibcore/internal/Java21LanguageFeatures$Line;->b:Llibcore/internal/Java21LanguageFeatures$Point;

    return-void
.end method


# virtual methods
.method public blacklist a()Llibcore/internal/Java21LanguageFeatures$Point;
    .registers 2

    .line 140
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$Line;->a:Llibcore/internal/Java21LanguageFeatures$Point;

    return-object v0
.end method

.method public blacklist b()Llibcore/internal/Java21LanguageFeatures$Point;
    .registers 2

    .line 140
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$Line;->b:Llibcore/internal/Java21LanguageFeatures$Point;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 140
    invoke-custom {p0, p1}, call_site_9("equals", (Llibcore/internal/Java21LanguageFeatures$Line;Ljava/lang/Object;)Z, Llibcore/internal/Java21LanguageFeatures$Line;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$Line;->a:Llibcore/internal/Java21LanguageFeatures$Point;, instance-get@Llibcore/internal/Java21LanguageFeatures$Line;->b:Llibcore/internal/Java21LanguageFeatures$Point;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 140
    invoke-custom {p0}, call_site_10("hashCode", (Llibcore/internal/Java21LanguageFeatures$Line;)I, Llibcore/internal/Java21LanguageFeatures$Line;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$Line;->a:Llibcore/internal/Java21LanguageFeatures$Point;, instance-get@Llibcore/internal/Java21LanguageFeatures$Line;->b:Llibcore/internal/Java21LanguageFeatures$Point;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 140
    invoke-custom {p0}, call_site_11("toString", (Llibcore/internal/Java21LanguageFeatures$Line;)Ljava/lang/String;, Llibcore/internal/Java21LanguageFeatures$Line;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$Line;->a:Llibcore/internal/Java21LanguageFeatures$Point;, instance-get@Llibcore/internal/Java21LanguageFeatures$Line;->b:Llibcore/internal/Java21LanguageFeatures$Point;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
