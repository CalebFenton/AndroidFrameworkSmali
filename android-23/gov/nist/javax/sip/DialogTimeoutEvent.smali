.class public Lgov/nist/javax/sip/DialogTimeoutEvent;
.super Ljava/util/EventObject;
.source "DialogTimeoutEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x22e385bc1cf941b5L


# instance fields
.field private m_dialog:Ljavax/sip/Dialog;

.field private m_reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/Dialog;Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "dialog"    # Ljavax/sip/Dialog;
    .param p3, "reason"    # Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 43
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@4
    .line 71
    iput-object v0, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_dialog:Ljavax/sip/Dialog;

    #@6
    .line 72
    iput-object v0, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@8
    .line 44
    iput-object p2, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_dialog:Ljavax/sip/Dialog;

    #@a
    .line 45
    iput-object p3, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@c
    .line 42
    return-void
.end method


# virtual methods
.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_dialog:Ljavax/sip/Dialog;

    #@2
    return-object v0
.end method

.method public getReason()Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@2
    return-object v0
.end method
