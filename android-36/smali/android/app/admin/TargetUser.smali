.class public final Landroid/app/admin/TargetUser;
.super Ljava/lang/Object;
.source "TargetUser.java"


# static fields
.field public static final whitelist GLOBAL:Landroid/app/admin/TargetUser;

.field public static final blacklist GLOBAL_USER_ID:I = -0x3

.field public static final whitelist LOCAL_USER:Landroid/app/admin/TargetUser;

.field public static final blacklist LOCAL_USER_ID:I = -0x1

.field public static final whitelist PARENT_USER:Landroid/app/admin/TargetUser;

.field public static final blacklist PARENT_USER_ID:I = -0x2

.field public static final whitelist UNKNOWN_USER:Landroid/app/admin/TargetUser;

.field public static final blacklist UNKNOWN_USER_ID:I = -0x3


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Landroid/app/admin/TargetUser;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/TargetUser;-><init>(I)V

    sput-object v0, Landroid/app/admin/TargetUser;->LOCAL_USER:Landroid/app/admin/TargetUser;

    .line 74
    new-instance v0, Landroid/app/admin/TargetUser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/app/admin/TargetUser;-><init>(I)V

    sput-object v0, Landroid/app/admin/TargetUser;->PARENT_USER:Landroid/app/admin/TargetUser;

    .line 80
    new-instance v0, Landroid/app/admin/TargetUser;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/app/admin/TargetUser;-><init>(I)V

    sput-object v0, Landroid/app/admin/TargetUser;->GLOBAL:Landroid/app/admin/TargetUser;

    .line 89
    new-instance v0, Landroid/app/admin/TargetUser;

    invoke-direct {v0, v1}, Landroid/app/admin/TargetUser;-><init>(I)V

    sput-object v0, Landroid/app/admin/TargetUser;->UNKNOWN_USER:Landroid/app/admin/TargetUser;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Landroid/app/admin/TargetUser;->mUserId:I

    .line 98
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 103
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 104
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/TargetUser;

    .line 105
    .local v2, "other":Landroid/app/admin/TargetUser;
    iget v3, p0, Landroid/app/admin/TargetUser;->mUserId:I

    iget v4, v2, Landroid/app/admin/TargetUser;->mUserId:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 103
    .end local v2    # "other":Landroid/app/admin/TargetUser;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/app/admin/TargetUser;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
