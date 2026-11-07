.class public final Llibcore/internal/Java21LanguageFeatures$PairableInt;
.super Ljava/lang/Record;
.source "Java21LanguageFeatures.java"

# interfaces
.implements Llibcore/internal/Java21LanguageFeatures$Pairable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairableInt"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {}
    }
    componentAnnotations = {
        {}
    }
    componentNames = {
        "x"
    }
    componentSignatures = {
        null
    }
    componentTypes = {
        I
    }
.end annotation


# instance fields
.field private final blacklist x:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Llibcore/internal/Java21LanguageFeatures$PairableInt;->x:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 154
    invoke-custom {p0, p1}, call_site_18("equals", (Llibcore/internal/Java21LanguageFeatures$PairableInt;Ljava/lang/Object;)Z, Llibcore/internal/Java21LanguageFeatures$PairableInt;, "x", instance-get@Llibcore/internal/Java21LanguageFeatures$PairableInt;->x:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 154
    invoke-custom {p0}, call_site_19("hashCode", (Llibcore/internal/Java21LanguageFeatures$PairableInt;)I, Llibcore/internal/Java21LanguageFeatures$PairableInt;, "x", instance-get@Llibcore/internal/Java21LanguageFeatures$PairableInt;->x:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 154
    invoke-custom {p0}, call_site_20("toString", (Llibcore/internal/Java21LanguageFeatures$PairableInt;)Ljava/lang/String;, Llibcore/internal/Java21LanguageFeatures$PairableInt;, "x", instance-get@Llibcore/internal/Java21LanguageFeatures$PairableInt;->x:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist x()I
    .registers 2

    .line 154
    iget v0, p0, Llibcore/internal/Java21LanguageFeatures$PairableInt;->x:I

    return v0
.end method
