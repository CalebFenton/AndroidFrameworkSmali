.class public abstract Lcom/android/org/bouncycastle/util/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# static fields
.field private static final blacklist threadProperties:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static blacklist asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2

    .line 154
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 158
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist asInteger(Ljava/lang/String;I)I
    .registers 2

    .line 136
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 140
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    return p1
.end method

.method public static blacklist getPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 191
    new-instance v0, Lcom/android/org/bouncycastle/util/Properties$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/util/Properties$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    return-object v0

    .line 203
    :cond_e
    sget-object v0, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_21

    .line 206
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_21

    return-object v0

    .line 213
    :cond_21
    new-instance v0, Lcom/android/org/bouncycastle/util/Properties$2;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/util/Properties$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist isOverrideSet(Ljava/lang/String;)Z
    .registers 1

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isSetTrue(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isOverrideSetTo(Ljava/lang/String;Z)Z
    .registers 2

    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_b

    .line 67
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isSetTrue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 69
    :cond_b
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isSetFalse(Ljava/lang/String;)Z

    move-result p0
    :try_end_f
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_f} :catch_10

    return p0

    :catch_10
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isSetFalse(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_62

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    goto :goto_62

    .line 241
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-eq v1, v2, :cond_1b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_60

    :cond_1b
    const/4 v1, 0x1

    .line 242
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_60

    :cond_2c
    const/4 v2, 0x2

    .line 243
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_3d

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_60

    :cond_3d
    const/4 v2, 0x3

    .line 244
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-eq v3, v4, :cond_4e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_60

    :cond_4e
    const/4 v2, 0x4

    .line 245
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_61

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x45

    if-ne p0, v2, :cond_60

    goto :goto_61

    :cond_60
    return v0

    :cond_61
    :goto_61
    return v1

    :cond_62
    :goto_62
    return v0
.end method

.method private static blacklist isSetTrue(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_51

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    goto :goto_51

    .line 255
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_1b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_4f

    :cond_1b
    const/4 v1, 0x1

    .line 256
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_4f

    :cond_2c
    const/4 v2, 0x2

    .line 257
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-eq v3, v4, :cond_3d

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_4f

    :cond_3d
    const/4 v2, 0x3

    .line 258
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_50

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x45

    if-ne p0, v2, :cond_4f

    goto :goto_50

    :cond_4f
    return v0

    :cond_50
    :goto_50
    return v1

    :cond_51
    :goto_51
    return v0
.end method
