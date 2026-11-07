.class public final Lcom/android/internal/net/utils/build/UnboundedSdkLevel;
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

.field private static final blacklist sInstance:Lcom/android/internal/net/utils/build/UnboundedSdkLevel;


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

    sput-object v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    .line 54
    sget-object v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    const-string v1, "Q"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    const-string v2, "R"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    const-string v3, "S"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    const/16 v5, 0x1f

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    const-string v4, "Sv2"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    new-instance v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 77
    sget-object v3, Landroid/os/Build$VERSION;->KNOWN_CODENAMES:Ljava/util/Set;

    goto :goto_65

    .line 78
    :cond_5b
    sget-object v3, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    :goto_65
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;-><init>(ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->sInstance:Lcom/android/internal/net/utils/build/UnboundedSdkLevel;

    .line 72
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/util/Set;)V
    .registers 5
    .param p1, "sdkInt"    # I
    .param p2, "codename"    # Ljava/lang/String;
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
    .local p3, "knownCodenames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mSdkInt:I

    .line 88
    iput-object p2, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mCodename:Ljava/lang/String;

    .line 89
    const-string v0, "REL"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    .line 90
    iput-object p3, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    .line 91
    return-void
.end method

.method public static blacklist isAtLeast(Ljava/lang/String;)Z
    .registers 2
    .param p0, "version"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->sInstance:Lcom/android/internal/net/utils/build/UnboundedSdkLevel;

    invoke-virtual {v0, p0}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->isAtLeastInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAtMost(Ljava/lang/String;)Z
    .registers 2
    .param p0, "version"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->sInstance:Lcom/android/internal/net/utils/build/UnboundedSdkLevel;

    invoke-virtual {v0, p0}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->isAtMostInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isCodename(Ljava/lang/String;)Z
    .registers 3
    .param p1, "version"    # Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0

    .line 162
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static varargs blacklist setOf([Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p0, "contents"    # [Ljava/lang/String;
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
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastR()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 65
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 66
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    .line 67
    .local v3, "codename":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v3    # "codename":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 69
    :cond_1d
    return-object v0
.end method


# virtual methods
.method blacklist isAtLeastInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "version"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->removeFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-boolean v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_43

    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 99
    iget-object v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 104
    return v2

    .line 100
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Artifact with a known codename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be recompiled with a finalized integer version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_38
    iget v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v0, v3, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    return v1

    .line 108
    :cond_43
    invoke-direct {p0, p1}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 109
    iget-object v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 113
    :cond_50
    iget v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v0, v3, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    return v1
.end method

.method blacklist isAtMostInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "version"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->removeFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-boolean v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_42

    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 122
    iget-object v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 127
    return v2

    .line 123
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Artifact with a known codename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be recompiled with a finalized integer version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_38
    iget v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v0, v3, :cond_41

    move v1, v2

    :cond_41
    return v1

    .line 131
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 132
    iget-object v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mCodename:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_58
    move v1, v2

    :cond_59
    return v1

    .line 142
    :cond_5a
    iget v0, p0, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->mSdkInt:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v0, v3, :cond_63

    move v1, v2

    :cond_63
    return v1
.end method

.method blacklist removeFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "version"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/net/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 152
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 153
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 157
    .end local v0    # "index":I
    :cond_15
    return-object p1
.end method
