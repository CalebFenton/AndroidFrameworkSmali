.class interface abstract Lsun/security/ssl/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field public static final OVERFLOW_OF_INT08:I = 0x100

.field public static final OVERFLOW_OF_INT16:I = 0x10000

.field public static final OVERFLOW_OF_INT24:I = 0x1000000

.field public static final ct_alert:B = 0x15t

.field public static final ct_application_data:B = 0x17t

.field public static final ct_change_cipher_spec:B = 0x14t

.field public static final ct_handshake:B = 0x16t

.field public static final enableCBCProtection:Z

.field public static final headerSize:I = 0x5

.field public static final maxAlertRecordSize:I = 0x21b

.field public static final maxDataSize:I = 0x4000

.field public static final maxDataSizeMinusOneByteRecord:I = 0x3de6

.field public static final maxExpansion:I = 0x400

.field public static final maxIVLength:I = 0x100

.field public static final maxLargeRecordSize:I = 0x8219

.field public static final maxPadding:I = 0x100

.field public static final maxRecordSize:I = 0x4219

.field public static final trailerSize:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "jsse.enableCBCProtection"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    .line 70
    sput-boolean v0, Lsun/security/ssl/Record;->enableCBCProtection:Z

    #@a
    .line 37
    return-void
.end method
