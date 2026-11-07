.class public final Llibcore/internal/Java21LanguageFeatures$MultiBlob;
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
    name = "MultiBlob"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "type",
        "color",
        "count"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Llibcore/internal/Java21LanguageFeatures$ShapeType;,
        Llibcore/internal/Java21LanguageFeatures$Color;,
        Ljava/lang/Integer;
    }
.end annotation


# instance fields
.field private final blacklist color:Llibcore/internal/Java21LanguageFeatures$Color;

.field private final blacklist count:Ljava/lang/Integer;

.field private final blacklist type:Llibcore/internal/Java21LanguageFeatures$ShapeType;


# direct methods
.method public constructor blacklist <init>(Llibcore/internal/Java21LanguageFeatures$ShapeType;Llibcore/internal/Java21LanguageFeatures$Color;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "type"    # Llibcore/internal/Java21LanguageFeatures$ShapeType;
    .param p2, "color"    # Llibcore/internal/Java21LanguageFeatures$Color;
    .param p3, "count"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "color",
            "count"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->type:Llibcore/internal/Java21LanguageFeatures$ShapeType;

    iput-object p2, p0, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->color:Llibcore/internal/Java21LanguageFeatures$Color;

    iput-object p3, p0, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->count:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public blacklist color()Llibcore/internal/Java21LanguageFeatures$Color;
    .registers 2

    .line 179
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->color:Llibcore/internal/Java21LanguageFeatures$Color;

    return-object v0
.end method

.method public blacklist count()Ljava/lang/Integer;
    .registers 2

    .line 179
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    invoke-custom {p0, p1}, call_site_12("equals", (Llibcore/internal/Java21LanguageFeatures$MultiBlob;Ljava/lang/Object;)Z, Llibcore/internal/Java21LanguageFeatures$MultiBlob;, "type;color;count", instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->type:Llibcore/internal/Java21LanguageFeatures$ShapeType;, instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->color:Llibcore/internal/Java21LanguageFeatures$Color;, instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->count:Ljava/lang/Integer;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 179
    invoke-custom {p0}, call_site_13("hashCode", (Llibcore/internal/Java21LanguageFeatures$MultiBlob;)I, Llibcore/internal/Java21LanguageFeatures$MultiBlob;, "type;color;count", instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->type:Llibcore/internal/Java21LanguageFeatures$ShapeType;, instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->color:Llibcore/internal/Java21LanguageFeatures$Color;, instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->count:Ljava/lang/Integer;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 179
    invoke-custom {p0}, call_site_14("toString", (Llibcore/internal/Java21LanguageFeatures$MultiBlob;)Ljava/lang/String;, Llibcore/internal/Java21LanguageFeatures$MultiBlob;, "type;color;count", instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->type:Llibcore/internal/Java21LanguageFeatures$ShapeType;, instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->color:Llibcore/internal/Java21LanguageFeatures$Color;, instance-get@Llibcore/internal/Java21LanguageFeatures$MultiBlob;->count:Ljava/lang/Integer;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist type()Llibcore/internal/Java21LanguageFeatures$ShapeType;
    .registers 2

    .line 179
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->type:Llibcore/internal/Java21LanguageFeatures$ShapeType;

    return-object v0
.end method
