.class public Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;
.super Ljava/util/EventObject;
.source "SIPDialogErrorEvent.java"


# static fields
.field public static final greylist DIALOG_ACK_NOT_RECEIVED_TIMEOUT:I = 0x1

.field public static final greylist DIALOG_ACK_NOT_SENT_TIMEOUT:I = 0x2

.field public static final greylist DIALOG_REINVITE_TIMEOUT:I = 0x3


# instance fields
.field private greylist errorID:I


# direct methods
.method constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPDialog;I)V
    .registers 3
    .param p1, "sourceDialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "dialogErrorID"    # I

    .line 60
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 61
    iput p2, p0, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->errorID:I

    .line 63
    return-void
.end method


# virtual methods
.method public greylist getErrorID()I
    .registers 2

    .line 71
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->errorID:I

    return v0
.end method
