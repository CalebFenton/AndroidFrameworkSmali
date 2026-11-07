.class public Landroid/os/PermissionEnforcer;
.super Ljava/lang/Object;
.source "PermissionEnforcer.java"


# static fields
.field private static final blacklist ACCESS_DENIED:Ljava/lang/String; = "Access denied, requires: "


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PermissionEnforcer;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/os/PermissionEnforcer;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method private blacklist anyAppOps([Ljava/lang/String;)Z
    .registers 8
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_13

    aget-object v3, p1, v2

    .line 122
    .local v3, "permission":Ljava/lang/String;
    invoke-static {v3}, Landroid/os/PermissionEnforcer;->permissionToOpCode(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_10

    .line 123
    const/4 v0, 0x1

    return v0

    .line 121
    .end local v3    # "permission":Ljava/lang/String;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 126
    :cond_13
    return v1
.end method

.method public static blacklist fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    const-string/jumbo v0, "permission_enforcer"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PermissionEnforcer;

    return-object v0
.end method

.method private static blacklist permissionToOpCode(Ljava/lang/String;)I
    .registers 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 113
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist permissionToOpCode$ravenwood(Ljava/lang/String;)I
    .registers 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 117
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method protected blacklist checkPermission(Ljava/lang/String;II)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 104
    iget-object v0, p0, Landroid/os/PermissionEnforcer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_a

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_a
    const/4 v0, 0x2

    return v0
.end method

.method protected blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "source"    # Landroid/content/AttributionSource;

    .line 97
    iget-object v0, p0, Landroid/os/PermissionEnforcer;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-static {v0, p1, v1, p2, v2}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist enforcePermission(Ljava/lang/String;II)V
    .registers 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 139
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 140
    new-instance v0, Landroid/content/AttributionSource;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, v1}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v0, "source":Landroid/content/AttributionSource;
    invoke-virtual {p0, p1, v0}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 142
    return-void

    .line 144
    .end local v0    # "source":Landroid/content/AttributionSource;
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 145
    .local v0, "result":I
    if-nez v0, :cond_18

    .line 148
    return-void

    .line 146
    :cond_18
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied, requires: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist enforcePermission(Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "source"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p1, p2}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    .line 132
    .local v0, "result":I
    if-nez v0, :cond_7

    .line 135
    return-void

    .line 133
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied, requires: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist enforcePermissionAllOf([Ljava/lang/String;II)V
    .registers 9
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1}, Landroid/os/PermissionEnforcer;->anyAppOps([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 164
    new-instance v0, Landroid/content/AttributionSource;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, v1}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "source":Landroid/content/AttributionSource;
    invoke-virtual {p0, p1, v0}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 166
    return-void

    .line 168
    .end local v0    # "source":Landroid/content/AttributionSource;
    :cond_10
    array-length v0, p1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_45

    aget-object v2, p1, v1

    .line 169
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2, p2, p3}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    .line 170
    .local v3, "result":I
    if-nez v3, :cond_1f

    .line 168
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "result":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 171
    .restart local v2    # "permission":Ljava/lang/String;
    .restart local v3    # "result":I
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access denied, requires: allOf={"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    const-string v4, ", "

    invoke-static {v4, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_45
    return-void
.end method

.method public blacklist enforcePermissionAllOf([Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 8
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "source"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_35

    aget-object v2, p1, v1

    .line 153
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v3

    .line 154
    .local v3, "result":I
    if-nez v3, :cond_f

    .line 152
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "result":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 155
    .restart local v2    # "permission":Ljava/lang/String;
    .restart local v3    # "result":I
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access denied, requires: allOf={"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string v4, ", "

    invoke-static {v4, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_35
    return-void
.end method

.method public blacklist enforcePermissionAnyOf([Ljava/lang/String;II)V
    .registers 8
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1}, Landroid/os/PermissionEnforcer;->anyAppOps([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 192
    new-instance v0, Landroid/content/AttributionSource;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, v1}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v0, "source":Landroid/content/AttributionSource;
    invoke-virtual {p0, p1, v0}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 194
    return-void

    .line 196
    .end local v0    # "source":Landroid/content/AttributionSource;
    :cond_10
    array-length v0, p1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    aget-object v2, p1, v1

    .line 197
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2, p2, p3}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    .line 198
    .local v3, "result":I
    if-nez v3, :cond_1d

    .line 199
    return-void

    .line 196
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 202
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied, requires: anyOf={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enforcePermissionAnyOf([Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 7
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "source"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 179
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 180
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v3

    .line 181
    .local v3, "result":I
    if-nez v3, :cond_d

    .line 182
    return-void

    .line 179
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 185
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied, requires: anyOf={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
