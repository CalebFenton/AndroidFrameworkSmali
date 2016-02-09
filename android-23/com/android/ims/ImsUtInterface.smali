.class public interface abstract Lcom/android/ims/ImsUtInterface;
.super Ljava/lang/Object;
.source "ImsUtInterface.java"


# static fields
.field public static final ACTION_ACTIVATION:I = 0x1

.field public static final ACTION_DEACTIVATION:I = 0x0

.field public static final ACTION_ERASURE:I = 0x4

.field public static final ACTION_INTERROGATION:I = 0x5

.field public static final ACTION_REGISTRATION:I = 0x3

.field public static final CB_BAIC:I = 0x1

.field public static final CB_BAOC:I = 0x2

.field public static final CB_BA_ALL:I = 0x7

.field public static final CB_BA_MO:I = 0x8

.field public static final CB_BA_MT:I = 0x9

.field public static final CB_BIC_ACR:I = 0x6

.field public static final CB_BIC_WR:I = 0x5

.field public static final CB_BOIC:I = 0x3

.field public static final CB_BOIC_EXHC:I = 0x4

.field public static final CB_BS_MT:I = 0xa

.field public static final CDIV_CF_ALL:I = 0x4

.field public static final CDIV_CF_ALL_CONDITIONAL:I = 0x5

.field public static final CDIV_CF_BUSY:I = 0x1

.field public static final CDIV_CF_NOT_LOGGED_IN:I = 0x6

.field public static final CDIV_CF_NOT_REACHABLE:I = 0x3

.field public static final CDIV_CF_NO_REPLY:I = 0x2

.field public static final CDIV_CF_UNCONDITIONAL:I = 0x0

.field public static final INVALID:I = -0x1

.field public static final OIR_DEFAULT:I = 0x0

.field public static final OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final OIR_PRESENTATION_RESTRICTED:I = 0x1


# virtual methods
.method public abstract queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract queryCLIR(Landroid/os/Message;)V
.end method

.method public abstract queryCOLP(Landroid/os/Message;)V
.end method

.method public abstract queryCOLR(Landroid/os/Message;)V
.end method

.method public abstract queryCallBarring(ILandroid/os/Message;)V
.end method

.method public abstract queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryCallWaiting(Landroid/os/Message;)V
.end method

.method public abstract updateCLIP(ZLandroid/os/Message;)V
.end method

.method public abstract updateCLIR(ILandroid/os/Message;)V
.end method

.method public abstract updateCOLP(ZLandroid/os/Message;)V
.end method

.method public abstract updateCOLR(ILandroid/os/Message;)V
.end method

.method public abstract updateCallBarring(IZLandroid/os/Message;[Ljava/lang/String;)V
.end method

.method public abstract updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract updateCallWaiting(ZILandroid/os/Message;)V
.end method
