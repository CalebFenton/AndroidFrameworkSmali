.class public Landroid/media/permission/ClearCallingIdentityContext;
.super Ljava/lang/Object;
.source "ClearCallingIdentityContext.java"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# instance fields
.field private final blacklist mRestoreKey:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/permission/ClearCallingIdentityContext;->mRestoreKey:J

    .line 53
    return-void
.end method

.method public static blacklist create()Landroid/media/permission/SafeCloseable;
    .registers 1

    .line 47
    new-instance v0, Landroid/media/permission/ClearCallingIdentityContext;

    invoke-direct {v0}, Landroid/media/permission/ClearCallingIdentityContext;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 57
    iget-wide v0, p0, Landroid/media/permission/ClearCallingIdentityContext;->mRestoreKey:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    return-void
.end method
