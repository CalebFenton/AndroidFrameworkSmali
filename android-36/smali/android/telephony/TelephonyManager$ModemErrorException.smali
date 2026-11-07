.class public Landroid/telephony/TelephonyManager$ModemErrorException;
.super Landroid/telephony/TelephonyManager$NetworkSlicingException;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModemErrorException"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/TelephonyManager;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18621
    iput-object p1, p0, Landroid/telephony/TelephonyManager$ModemErrorException;->this$0:Landroid/telephony/TelephonyManager;

    .line 18622
    invoke-direct {p0, p2}, Landroid/telephony/TelephonyManager$NetworkSlicingException;-><init>(I)V

    .line 18623
    return-void
.end method
