.class public Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VisualVoicemailSmsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedMessageData"
.end annotation


# instance fields
.field public final blacklist fields:Landroid/os/Bundle;

.field public final blacklist prefix:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->prefix:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->fields:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WrappedMessageData [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->fields:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
