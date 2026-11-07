.class public final synthetic Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ICurrentThreadId;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist get()I
    .registers 2

    .line 0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method
