.class public final Llibcore/internal/Java21LanguageFeatures$PairableString;
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
    name = "PairableString"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {}
    }
    componentAnnotations = {
        {}
    }
    componentNames = {
        "s"
    }
    componentSignatures = {
        null
    }
    componentTypes = {
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field private final blacklist s:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Llibcore/internal/Java21LanguageFeatures$PairableString;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 156
    invoke-custom {p0, p1}, call_site_21("equals", (Llibcore/internal/Java21LanguageFeatures$PairableString;Ljava/lang/Object;)Z, Llibcore/internal/Java21LanguageFeatures$PairableString;, "s", instance-get@Llibcore/internal/Java21LanguageFeatures$PairableString;->s:Ljava/lang/String;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 156
    invoke-custom {p0}, call_site_22("hashCode", (Llibcore/internal/Java21LanguageFeatures$PairableString;)I, Llibcore/internal/Java21LanguageFeatures$PairableString;, "s", instance-get@Llibcore/internal/Java21LanguageFeatures$PairableString;->s:Ljava/lang/String;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist s()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$PairableString;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 156
    invoke-custom {p0}, call_site_23("toString", (Llibcore/internal/Java21LanguageFeatures$PairableString;)Ljava/lang/String;, Llibcore/internal/Java21LanguageFeatures$PairableString;, "s", instance-get@Llibcore/internal/Java21LanguageFeatures$PairableString;->s:Ljava/lang/String;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
