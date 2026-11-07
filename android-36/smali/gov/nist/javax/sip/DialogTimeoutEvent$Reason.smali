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
        "Ljava/lang/Enum<",
        "Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum greylist AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum greylist AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum greylist ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;


# direct methods
.method private static synthetic greylist $values()[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .registers 3

    .line 34
    sget-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    sget-object v2, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    filled-new-array {v0, v1, v2}, [Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    const-string v1, "AckNotReceived"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    const-string v1, "AckNotSent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    const-string v1, "ReInviteTimeout"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    invoke-static {}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->$values()[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->$VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    const-class v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    return-object v0
.end method

.method public static greylist values()[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .registers 1

    .line 34
    sget-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->$VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    invoke-virtual {v0}, [Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    return-object v0
.end method
