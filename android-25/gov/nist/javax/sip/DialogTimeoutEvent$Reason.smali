.class public final enum Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
.super Ljava/lang/Enum;
.source "DialogTimeoutEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/DialogTimeoutEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 34
    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@5
    const-string/jumbo v1, "AckNotReceived"

    #@8
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@d
    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@f
    const-string/jumbo v1, "AckNotSent"

    #@12
    invoke-direct {v0, v1, v3}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@17
    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@19
    const-string/jumbo v1, "ReInviteTimeout"

    #@1c
    invoke-direct {v0, v1, v4}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@24
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->$VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    const-class v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@8
    return-object v0
.end method

.method public static values()[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .locals 1

    #@0
    .prologue
    .line 34
    sget-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->$VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    #@2
    return-object v0
.end method
