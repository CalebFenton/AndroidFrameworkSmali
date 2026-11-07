.class public Lgov/nist/javax/sip/header/Priority;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Priority.java"

# interfaces
.implements Ljavax/sip/header/PriorityHeader;


# static fields
.field public static final greylist EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final greylist NON_URGENT:Ljava/lang/String; = "non-urgent"

.field public static final greylist NORMAL:Ljava/lang/String; = "normal"

.field public static final greylist URGENT:Ljava/lang/String; = "urgent"

.field private static final whitelist serialVersionUID:J = 0x3541b15bf9044cbaL


# instance fields
.field protected greylist priority:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 72
    const-string v0, "Priority"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/Priority;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPriority()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/Priority;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setPriority(Ljava/lang/String;)V
    .registers 4
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 96
    if-eqz p1, :cond_5

    .line 100
    iput-object p1, p0, Lgov/nist/javax/sip/header/Priority;->priority:Ljava/lang/String;

    .line 101
    return-void

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,Priority, setPriority(), the priority parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
