.class public final Llibcore/internal/Java21LanguageFeatures$GeometricBlob;
.super Ljava/lang/Record;
.source "Java21LanguageFeatures.java"

# interfaces
.implements Llibcore/internal/Java21LanguageFeatures$ComplexBlob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeometricBlob"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {}
    }
    componentAnnotations = {
        {}
    }
    componentNames = {
        "sides"
    }
    componentSignatures = {
        null
    }
    componentTypes = {
        I
    }
.end annotation


# instance fields
.field private final blacklist sides:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "sides"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sides"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Llibcore/internal/Java21LanguageFeatures$GeometricBlob;->sides:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 181
    invoke-custom {p0, p1}, call_site_6("equals", (Llibcore/internal/Java21LanguageFeatures$GeometricBlob;Ljava/lang/Object;)Z, Llibcore/internal/Java21LanguageFeatures$GeometricBlob;, "sides", instance-get@Llibcore/internal/Java21LanguageFeatures$GeometricBlob;->sides:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 181
    invoke-custom {p0}, call_site_7("hashCode", (Llibcore/internal/Java21LanguageFeatures$GeometricBlob;)I, Llibcore/internal/Java21LanguageFeatures$GeometricBlob;, "sides", instance-get@Llibcore/internal/Java21LanguageFeatures$GeometricBlob;->sides:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public blacklist sides()I
    .registers 2

    .line 181
    iget v0, p0, Llibcore/internal/Java21LanguageFeatures$GeometricBlob;->sides:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 181
    invoke-custom {p0}, call_site_8("toString", (Llibcore/internal/Java21LanguageFeatures$GeometricBlob;)Ljava/lang/String;, Llibcore/internal/Java21LanguageFeatures$GeometricBlob;, "sides", instance-get@Llibcore/internal/Java21LanguageFeatures$GeometricBlob;->sides:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
