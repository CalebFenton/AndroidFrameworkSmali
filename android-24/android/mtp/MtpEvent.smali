.class public Landroid/mtp/MtpEvent;
.super Ljava/lang/Object;
.source "MtpEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpEvent$IllegalParameterAccess;
    }
.end annotation


# static fields
.field public static final EVENT_CANCEL_TRANSACTION:I = 0x4001

.field public static final EVENT_CAPTURE_COMPLETE:I = 0x400d

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x4008

.field public static final EVENT_DEVICE_PROP_CHANGED:I = 0x4006

.field public static final EVENT_DEVICE_RESET:I = 0x400b

.field public static final EVENT_OBJECT_ADDED:I = 0x4002

.field public static final EVENT_OBJECT_INFO_CHANGED:I = 0x4007

.field public static final EVENT_OBJECT_PROP_CHANGED:I = 0xc801

.field public static final EVENT_OBJECT_PROP_DESC_CHANGED:I = 0xc802

.field public static final EVENT_OBJECT_REFERENCES_CHANGED:I = 0xc803

.field public static final EVENT_OBJECT_REMOVED:I = 0x4003

.field public static final EVENT_REQUEST_OBJECT_TRANSFER:I = 0x4009

.field public static final EVENT_STORAGE_INFO_CHANGED:I = 0x400c

.field public static final EVENT_STORE_ADDED:I = 0x4004

.field public static final EVENT_STORE_FULL:I = 0x400a

.field public static final EVENT_STORE_REMOVED:I = 0x4005

.field public static final EVENT_UNDEFINED:I = 0x4000

.field public static final EVENT_UNREPORTED_STATUS:I = 0x400e


# instance fields
.field private mEventCode:I

.field private mParameter1:I

.field private mParameter2:I

.field private mParameter3:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    const/16 v0, 0x4000

    #@5
    iput v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@7
    .line 71
    return-void
.end method


# virtual methods
.method public getDevicePropCode()I
    .locals 3

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 157
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    #@7
    const-string/jumbo v1, "devicePropCode"

    #@a
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@c
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    #@f
    throw v0

    #@10
    .line 155
    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@12
    return v0

    #@13
    .line 153
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x4006
        :pswitch_0
    .end packed-switch
.end method

.method public getEventCode()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@2
    return v0
.end method

.method public getObjectFormatCode()I
    .locals 3

    #@0
    .prologue
    .line 198
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 202
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    #@7
    const-string/jumbo v1, "objectFormatCode"

    #@a
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@c
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    #@f
    throw v0

    #@10
    .line 200
    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    #@12
    return v0

    #@13
    .line 198
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0xc802
        :pswitch_0
    .end packed-switch
.end method

.method public getObjectHandle()I
    .locals 3

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 120
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    #@7
    const-string/jumbo v1, "objectHandle"

    #@a
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@c
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    #@f
    throw v0

    #@10
    .line 108
    :sswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@12
    return v0

    #@13
    .line 110
    :sswitch_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@15
    return v0

    #@16
    .line 112
    :sswitch_2
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@18
    return v0

    #@19
    .line 114
    :sswitch_3
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@1b
    return v0

    #@1c
    .line 116
    :sswitch_4
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@1e
    return v0

    #@1f
    .line 118
    :sswitch_5
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@21
    return v0

    #@22
    .line 106
    :sswitch_data_0
    .sparse-switch
        0x4002 -> :sswitch_0
        0x4003 -> :sswitch_1
        0x4007 -> :sswitch_2
        0x4009 -> :sswitch_3
        0xc801 -> :sswitch_4
        0xc803 -> :sswitch_5
    .end sparse-switch
.end method

.method public getObjectPropCode()I
    .locals 3

    #@0
    .prologue
    .line 182
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 188
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    #@7
    const-string/jumbo v1, "objectPropCode"

    #@a
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@c
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    #@f
    throw v0

    #@10
    .line 184
    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    #@12
    return v0

    #@13
    .line 186
    :pswitch_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@15
    return v0

    #@16
    .line 182
    :pswitch_data_0
    .packed-switch 0xc801
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getParameter1()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@2
    return v0
.end method

.method public getParameter2()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    #@2
    return v0
.end method

.method public getParameter3()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter3:I

    #@2
    return v0
.end method

.method public getStorageId()I
    .locals 3

    #@0
    .prologue
    .line 133
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 143
    :pswitch_0
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    #@7
    const-string/jumbo v1, "storageID"

    #@a
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@c
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    #@f
    throw v0

    #@10
    .line 135
    :pswitch_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@12
    return v0

    #@13
    .line 137
    :pswitch_2
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@15
    return v0

    #@16
    .line 139
    :pswitch_3
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@18
    return v0

    #@19
    .line 141
    :pswitch_4
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@1b
    return v0

    #@1c
    .line 133
    :pswitch_data_0
    .packed-switch 0x4004
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getTransactionId()I
    .locals 3

    #@0
    .prologue
    .line 167
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 171
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    #@7
    const-string/jumbo v1, "transactionID"

    #@a
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    #@c
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    #@f
    throw v0

    #@10
    .line 169
    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    #@12
    return v0

    #@13
    .line 167
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x400d
        :pswitch_0
    .end packed-switch
.end method
