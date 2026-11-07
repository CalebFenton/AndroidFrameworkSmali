.class Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;
.super Ljava/lang/Thread;
.source "ConfigUpdateInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$intent:Landroid/content/Intent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    iput-object p2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 68
    const-string v0, "ConfigUpdateInstallReceiver"

    const v1, 0xc864

    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetVersionFromIntent(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    move-result v2

    .line 70
    iget-object v3, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetRequiredHashFromIntent(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v4}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetCurrentVersion(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;)I

    move-result v4

    .line 74
    iget-object v5, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v5}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetCurrentContent(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$smgetCurrentHash([B)Ljava/lang/String;

    move-result-object v5

    .line 75
    iget-object v6, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v6, v4, v2}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z

    move-result v4

    if-nez v4, :cond_35

    .line 76
    const-string p0, "Not installing, new version is <= current version"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_33
    move-exception p0

    goto :goto_77

    .line 77
    :cond_35
    iget-object v4, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mverifyPreviousHash(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 78
    const-string p0, "Current hash did not match required value"

    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void

    .line 82
    :cond_43
    const-string v3, "Found new update, installing..."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetAltContent(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;

    move-result-object v3
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_52} :catch_33

    .line 84
    :try_start_52
    iget-object v4, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->install(Ljava/io/InputStream;I)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_6b

    if-eqz v3, :cond_5c

    .line 85
    :try_start_59
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 86
    :cond_5c
    const-string v2, "Installation successful"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, p0}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6a} :catch_33

    return-void

    :catchall_6b
    move-exception p0

    if-eqz v3, :cond_76

    .line 83
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v2

    :try_start_73
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_33

    .line 90
    :goto_77
    const-string v2, "Could not update content!"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_8f

    const/4 v0, 0x0

    const/16 v2, 0x63

    .line 94
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 96
    :cond_8f
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method
