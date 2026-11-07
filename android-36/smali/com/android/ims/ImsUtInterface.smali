.class public interface abstract Lcom/android/ims/ImsUtInterface;
.super Ljava/lang/Object;
.source "ImsUtInterface.java"


# static fields
.field public static final blacklist ACTION_ACTIVATION:I = 0x1

.field public static final blacklist ACTION_DEACTIVATION:I = 0x0

.field public static final blacklist ACTION_ERASURE:I = 0x4

.field public static final blacklist ACTION_INTERROGATION:I = 0x5

.field public static final blacklist ACTION_REGISTRATION:I = 0x3

.field public static final blacklist CB_BAIC:I = 0x1

.field public static final blacklist CB_BAOC:I = 0x2

.field public static final blacklist CB_BA_ALL:I = 0x7

.field public static final blacklist CB_BA_MO:I = 0x8

.field public static final blacklist CB_BA_MT:I = 0x9

.field public static final blacklist CB_BIC_ACR:I = 0x6

.field public static final blacklist CB_BIC_WR:I = 0x5

.field public static final blacklist CB_BOIC:I = 0x3

.field public static final blacklist CB_BOIC_EXHC:I = 0x4

.field public static final blacklist CB_BS_MT:I = 0xa

.field public static final blacklist CDIV_CF_ALL:I = 0x4

.field public static final blacklist CDIV_CF_ALL_CONDITIONAL:I = 0x5

.field public static final blacklist CDIV_CF_BUSY:I = 0x1

.field public static final blacklist CDIV_CF_NOT_LOGGED_IN:I = 0x6

.field public static final blacklist CDIV_CF_NOT_REACHABLE:I = 0x3

.field public static final blacklist CDIV_CF_NO_REPLY:I = 0x2

.field public static final blacklist CDIV_CF_UNCONDITIONAL:I = 0x0

.field public static final blacklist INVALID:I = -0x1

.field public static final blacklist OIR_DEFAULT:I = 0x0

.field public static final blacklist OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final blacklist OIR_PRESENTATION_RESTRICTED:I = 0x1


# virtual methods
.method public abstract blacklist queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract blacklist queryCLIR(Landroid/os/Message;)V
.end method

.method public abstract blacklist queryCOLP(Landroid/os/Message;)V
.end method

.method public abstract blacklist queryCOLR(Landroid/os/Message;)V
.end method

.method public abstract blacklist queryCallBarring(ILandroid/os/Message;)V
.end method

.method public abstract blacklist queryCallBarring(ILandroid/os/Message;I)V
.end method

.method public abstract greylist-max-r queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist queryCallWaiting(Landroid/os/Message;)V
.end method

.method public abstract blacklist registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist unregisterForSuppServiceIndication(Landroid/os/Handler;)V
.end method

.method public abstract blacklist updateCLIP(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist updateCLIR(ILandroid/os/Message;)V
.end method

.method public abstract blacklist updateCOLP(ZLandroid/os/Message;)V
.end method

.method public abstract blacklist updateCOLR(ILandroid/os/Message;)V
.end method

.method public abstract blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
.end method

.method public abstract blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
.end method

.method public abstract blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract blacklist updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract blacklist updateCallWaiting(ZILandroid/os/Message;)V
.end method
