.class public final Landroid/permission/internal/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# static fields
.field public static final blacklist USER_ALL:I

.field public static final blacklist USER_NULL:I = -0x2710

.field public static final blacklist USER_SYSTEM:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    sput v0, Landroid/permission/internal/compat/UserHandleCompat;->USER_ALL:I

    .line 41
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    sput v0, Landroid/permission/internal/compat/UserHandleCompat;->USER_SYSTEM:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getUid(II)I
    .registers 3
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .line 64
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->getUid(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getUserId(I)I
    .registers 2
    .param p0, "uid"    # I

    .line 53
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method
