.class final Lcom/android/server/pm/ShortcutUser$PackageWithUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageWithUser"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final userId:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput p1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@5
    .line 76
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@d
    .line 74
    return-void
.end method

.method public static of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    new-instance v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;-><init>(ILjava/lang/String;)V

    #@5
    return-object v0
.end method

.method public static of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .locals 3
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 84
    new-instance v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;-><init>(ILjava/lang/String;)V

    #@d
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 94
    instance-of v2, p1, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 95
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 97
    check-cast v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@9
    .line 99
    .local v0, "that":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget v2, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@b
    iget v3, v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@11
    iget-object v2, v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@8
    xor-int/2addr v0, v1

    #@9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "[Package: %d, %s]"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget v2, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
