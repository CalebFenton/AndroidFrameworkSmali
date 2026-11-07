.class public Landroid/os/ext/SdkExtensions;
.super Ljava/lang/Object;
.source "SdkExtensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ext/SdkExtensions$Extension;
    }
.end annotation


# static fields
.field public static final whitelist AD_SERVICES:I = 0xf4240

.field private static final blacklist AD_SERVICES_EXTENSION_INT:I

.field private static final blacklist ALL_EXTENSION_INTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist B_EXTENSION_INT:I

.field private static final blacklist R_EXTENSION_INT:I

.field private static final blacklist S_EXTENSION_INT:I

.field private static final blacklist T_EXTENSION_INT:I

.field private static final blacklist U_EXTENSION_INT:I

.field private static final blacklist V_EXTENSION_INT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 56
    const-string v0, "build.version.extensions.r"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ext/SdkExtensions;->R_EXTENSION_INT:I

    .line 57
    const-string v0, "build.version.extensions.s"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ext/SdkExtensions;->S_EXTENSION_INT:I

    .line 58
    const-string v0, "build.version.extensions.t"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ext/SdkExtensions;->T_EXTENSION_INT:I

    .line 59
    const-string v0, "build.version.extensions.u"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ext/SdkExtensions;->U_EXTENSION_INT:I

    .line 60
    const-string v0, "build.version.extensions.v"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ext/SdkExtensions;->V_EXTENSION_INT:I

    .line 61
    const-string v0, "build.version.extensions.b"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ext/SdkExtensions;->B_EXTENSION_INT:I

    .line 62
    nop

    .line 63
    const-string v0, "build.version.extensions.ad_services"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ext/SdkExtensions;->AD_SERVICES_EXTENSION_INT:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v0, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Landroid/os/ext/SdkExtensions;->R_EXTENSION_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Landroid/os/ext/util/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 67
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Landroid/os/ext/SdkExtensions;->S_EXTENSION_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_63
    invoke-static {}, Landroid/os/ext/util/SdkLevel;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 70
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Landroid/os/ext/SdkExtensions;->T_EXTENSION_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const v1, 0xf4240

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Landroid/os/ext/SdkExtensions;->AD_SERVICES_EXTENSION_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_88
    invoke-static {}, Landroid/os/ext/util/SdkLevel;->isAtLeastU()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 74
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Landroid/os/ext/SdkExtensions;->U_EXTENSION_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_9d
    invoke-static {}, Landroid/os/ext/util/SdkLevel;->isAtLeastV()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 77
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Landroid/os/ext/SdkExtensions;->V_EXTENSION_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_b2
    invoke-static {}, Landroid/os/ext/util/SdkLevel;->isAtLeastB()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 80
    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Landroid/os/ext/SdkExtensions;->B_EXTENSION_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_c7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/os/ext/SdkExtensions;->ALL_EXTENSION_INTS:Ljava/util/Map;

    .line 83
    .end local v0    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getAllExtensionVersions()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    sget-object v0, Landroid/os/ext/SdkExtensions;->ALL_EXTENSION_INTS:Ljava/util/Map;

    return-object v0
.end method

.method public static whitelist getExtensionVersion(I)I
    .registers 4
    .param p0, "extension"    # I

    .line 121
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_36

    .line 125
    if-ne p0, v0, :cond_9

    .line 126
    sget v0, Landroid/os/ext/SdkExtensions;->R_EXTENSION_INT:I

    return v0

    .line 128
    :cond_9
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_10

    .line 129
    sget v0, Landroid/os/ext/SdkExtensions;->S_EXTENSION_INT:I

    return v0

    .line 131
    :cond_10
    const/16 v0, 0x21

    if-ne p0, v0, :cond_17

    .line 132
    sget v0, Landroid/os/ext/SdkExtensions;->T_EXTENSION_INT:I

    return v0

    .line 134
    :cond_17
    const/16 v0, 0x22

    if-ne p0, v0, :cond_1e

    .line 135
    sget v0, Landroid/os/ext/SdkExtensions;->U_EXTENSION_INT:I

    return v0

    .line 137
    :cond_1e
    const/16 v0, 0x23

    if-ne p0, v0, :cond_25

    .line 138
    sget v0, Landroid/os/ext/SdkExtensions;->V_EXTENSION_INT:I

    return v0

    .line 140
    :cond_25
    const/16 v0, 0x24

    if-ne p0, v0, :cond_2c

    .line 141
    sget v0, Landroid/os/ext/SdkExtensions;->B_EXTENSION_INT:I

    return v0

    .line 143
    :cond_2c
    const v0, 0xf4240

    if-ne p0, v0, :cond_34

    .line 144
    sget v0, Landroid/os/ext/SdkExtensions;->AD_SERVICES_EXTENSION_INT:I

    return v0

    .line 146
    :cond_34
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a valid extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
