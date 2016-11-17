.class public Lgov/nist/javax/sip/header/SIPDateHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPDateHeader.java"

# interfaces
.implements Ljavax/sip/header/DateHeader;


# static fields
.field private static final serialVersionUID:J = 0x1811114988a6e228L


# instance fields
.field protected date:Lgov/nist/javax/sip/header/SIPDate;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    const-string/jumbo v0, "Date"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 99
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    #@6
    .line 100
    .local v0, "retval":Lgov/nist/javax/sip/header/SIPDateHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 101
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPDate;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/header/SIPDate;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    #@14
    .line 102
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPDate;->encode()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDate()Ljava/util/Calendar;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 94
    return-object v1

    #@6
    .line 95
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPDate;->getJavaCal()Ljava/util/Calendar;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public setDate(Lgov/nist/javax/sip/header/SIPDate;)V
    .locals 0
    .param p1, "d"    # Lgov/nist/javax/sip/header/SIPDate;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    #@2
    .line 71
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "dat"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 82
    if-eqz p1, :cond_0

    #@2
    .line 83
    new-instance v0, Lgov/nist/javax/sip/header/SIPDate;

    #@4
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@b
    move-result-wide v2

    #@c
    invoke-direct {v0, v2, v3}, Lgov/nist/javax/sip/header/SIPDate;-><init>(J)V

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDateHeader;->date:Lgov/nist/javax/sip/header/SIPDate;

    #@11
    .line 81
    :cond_0
    return-void
.end method
