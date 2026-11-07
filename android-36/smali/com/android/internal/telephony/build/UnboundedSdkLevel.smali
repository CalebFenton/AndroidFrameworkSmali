.class public final Lcom/android/internal/telephony/build/UnboundedSdkLevel;
.super Ljava/lang/Object;
.source "UnboundedSdkLevel.java"


# static fields
.field private static final blacklist PREVIOUS_CODENAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sInstance:Lcom/android/internal/telephony/build/UnboundedSdkLevel;


# instance fields
.field private final blacklist mCodename:Ljava/lang/String;

.field private final blacklist mIsReleaseBuild:Z

.field private final blacklist mKnownCodenames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSdkInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    .line 54
    const-string v1, "Q"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    const-string v2, "R"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    const-string v3, "S"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    const-string v4, "Sv2"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    new-instance v1, Lcom/android/internal/telephony/build/UnboundedSdkLevel;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/android/internal/telephony/build/SdkLevel;->isAtLeastT()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 77
    sget-object v0, Landroid/os/Build$VERSION;->KNOWN_CODENAMES:Ljava/util/Set;

    goto :goto_59

    .line 78
    :cond_53
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_59
    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;-><init>(ILjava/lang/String;Ljava/util/Set;)V

    sput-object v1, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->sInstance:Lcom/android/internal/telephony/build/UnboundedSdkLevel;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mSdkInt:I

    .line 88
    iput-object p2, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mCodename:Ljava/lang/String;

    .line 89
    const-string p1, "REL"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    .line 90
    iput-object p3, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    return-void
.end method

.method public static blacklist isAtLeast(Ljava/lang/String;)Z
    .registers 2

    .line 41
    sget-object v0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->sInstance:Lcom/android/internal/telephony/build/UnboundedSdkLevel;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->isAtLeastInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isAtMost(Ljava/lang/String;)Z
    .registers 2

    .line 48
    sget-object v0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->sInstance:Lcom/android/internal/telephony/build/UnboundedSdkLevel;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->isAtMostInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isCodename(Ljava/lang/String;)Z
    .registers 2

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0

    .line 162
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static varargs blacklist setOf([Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/build/SdkLevel;->isAtLeastR()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 65
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 66
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    .line 67
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    return-object v0
.end method


# virtual methods
.method blacklist isAtLeastInternal(Ljava/lang/String;)Z
    .registers 5

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->removeFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-boolean v0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 99
    iget-object p0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    return v2

    .line 100
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Artifact with a known codename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be recompiled with a finalized integer version."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_35
    iget p0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p0, p1, :cond_3e

    return v1

    :cond_3e
    return v2

    .line 108
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 109
    iget-object p0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 113
    :cond_4c
    iget p0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p0, p1, :cond_55

    return v1

    :cond_55
    return v2
.end method

.method blacklist isAtMostInternal(Ljava/lang/String;)Z
    .registers 5

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->removeFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-boolean v0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    return v2

    .line 123
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Artifact with a known codename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be recompiled with a finalized integer version."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_35
    iget p0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gt p0, p1, :cond_3e

    return v2

    :cond_3e
    return v1

    .line 131
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object p0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mCodename:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_56

    goto :goto_57

    :cond_56
    return v1

    :cond_57
    :goto_57
    return v2

    .line 142
    :cond_58
    iget p0, p0, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p0, p1, :cond_61

    return v2

    :cond_61
    return v1
.end method

.method blacklist removeFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, 0x2e

    .line 152
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p1
.end method
