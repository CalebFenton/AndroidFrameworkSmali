.class public final synthetic Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/Logging/SessionManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/Logging/SessionManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Logging/SessionManager;

    return-void
.end method


# virtual methods
.method public final blacklist get()J
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Logging/SessionManager;

    invoke-static {v0}, Landroid/telecom/Logging/SessionManager;->$r8$lambda$ShRbsmqP5ukuHE4CQ22dtsB1994(Landroid/telecom/Logging/SessionManager;)J

    move-result-wide v0

    return-wide v0
.end method
