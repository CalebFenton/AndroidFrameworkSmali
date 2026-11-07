.class Landroid/location/util/identity/CallerIdentity$Loader;
.super Ljava/lang/Object;
.source "CallerIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/util/identity/CallerIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final blacklist MY_PID:I

.field private static final blacklist MY_UID:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetMY_PID()I
    .registers 1

    sget v0, Landroid/location/util/identity/CallerIdentity$Loader;->MY_PID:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMY_UID()I
    .registers 1

    sget v0, Landroid/location/util/identity/CallerIdentity$Loader;->MY_UID:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 130
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Landroid/location/util/identity/CallerIdentity$Loader;->MY_UID:I

    .line 131
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Landroid/location/util/identity/CallerIdentity$Loader;->MY_PID:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
