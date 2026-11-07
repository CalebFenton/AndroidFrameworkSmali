.class public Landroid/hardware/input/AppLaunchData$RoleData;
.super Ljava/lang/Object;
.source "AppLaunchData.java"

# interfaces
.implements Landroid/hardware/input/AppLaunchData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/AppLaunchData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoleData"
.end annotation


# instance fields
.field private final blacklist mRole:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "role"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/hardware/input/AppLaunchData$RoleData;->mRole:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 115
    :cond_4
    instance-of v0, p1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 116
    .local v0, "roleData":Landroid/hardware/input/AppLaunchData$RoleData;
    iget-object v1, p0, Landroid/hardware/input/AppLaunchData$RoleData;->mRole:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/input/AppLaunchData$RoleData;->mRole:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 115
    .end local v0    # "roleData":Landroid/hardware/input/AppLaunchData$RoleData;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRole()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/hardware/input/AppLaunchData$RoleData;->mRole:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/hardware/input/AppLaunchData$RoleData;->mRole:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoleData{mRole=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/AppLaunchData$RoleData;->mRole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
