.class Landroid/telephony/MbmsGroupCallSession$2;
.super Ljava/lang/Object;
.source "MbmsGroupCallSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsGroupCallSession;->create(Landroid/content/Context;ILjava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsGroupCallSessionCallback;)Landroid/telephony/MbmsGroupCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

.field final synthetic blacklist val$result:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Landroid/telephony/MbmsGroupCallSession$2;->val$callback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    iput p2, p0, Landroid/telephony/MbmsGroupCallSession$2;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 133
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$2;->val$callback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    iget v1, p0, Landroid/telephony/MbmsGroupCallSession$2;->val$result:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/MbmsGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 134
    return-void
.end method
