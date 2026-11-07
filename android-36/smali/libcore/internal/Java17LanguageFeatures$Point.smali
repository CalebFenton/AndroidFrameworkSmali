.class public final Llibcore/internal/Java17LanguageFeatures$Point;
.super Ljava/lang/Record;
.source "Java17LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java17LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
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
        "x",
        "y"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field private final blacklist x:I

.field private final blacklist y:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Llibcore/internal/Java17LanguageFeatures$Point;->x:I

    iput p2, p0, Llibcore/internal/Java17LanguageFeatures$Point;->y:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    invoke-custom {p0, p1}, call_site_0("equals", (Llibcore/internal/Java17LanguageFeatures$Point;Ljava/lang/Object;)Z, Llibcore/internal/Java17LanguageFeatures$Point;, "x;y", instance-get@Llibcore/internal/Java17LanguageFeatures$Point;->x:I, instance-get@Llibcore/internal/Java17LanguageFeatures$Point;->y:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 88
    invoke-custom {p0}, call_site_1("hashCode", (Llibcore/internal/Java17LanguageFeatures$Point;)I, Llibcore/internal/Java17LanguageFeatures$Point;, "x;y", instance-get@Llibcore/internal/Java17LanguageFeatures$Point;->x:I, instance-get@Llibcore/internal/Java17LanguageFeatures$Point;->y:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 88
    invoke-custom {p0}, call_site_2("toString", (Llibcore/internal/Java17LanguageFeatures$Point;)Ljava/lang/String;, Llibcore/internal/Java17LanguageFeatures$Point;, "x;y", instance-get@Llibcore/internal/Java17LanguageFeatures$Point;->x:I, instance-get@Llibcore/internal/Java17LanguageFeatures$Point;->y:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist x()I
    .registers 2

    .line 88
    iget v0, p0, Llibcore/internal/Java17LanguageFeatures$Point;->x:I

    return v0
.end method

.method public blacklist y()I
    .registers 2

    .line 88
    iget v0, p0, Llibcore/internal/Java17LanguageFeatures$Point;->y:I

    return v0
.end method
