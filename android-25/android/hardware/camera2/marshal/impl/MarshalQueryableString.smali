.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;
.super Ljava/lang/Object;
.source "MarshalQueryableString.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final NUL:B

.field private static final TAG:Ljava/lang/String;

.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static synthetic -get0()Ljava/nio/charset/Charset;
    .locals 1

    #@0
    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const-class v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;->TAG:Ljava/lang/String;

    #@8
    .line 36
    const-string/jumbo v0, "UTF-8"

    #@b
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    #@11
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Ljava/lang/String;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 2
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 108
    if-nez p2, :cond_0

    #@3
    const-class v0, Ljava/lang/String;

    #@5
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :cond_0
    return v0
.end method
