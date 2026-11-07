.class Landroid/app/smartspace/SmartspaceSession$Token;
.super Ljava/lang/Object;
.source "SmartspaceSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Token"
.end annotation


# static fields
.field static final blacklist sBinder:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 287
    new-instance v0, Landroid/os/Binder;

    invoke-static {}, Landroid/app/smartspace/SmartspaceSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/app/smartspace/SmartspaceSession$Token;->sBinder:Landroid/os/IBinder;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
