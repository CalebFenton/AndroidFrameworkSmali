.class public interface abstract annotation Landroid/hardware/gnss/IAGnssCallback$AGnssStatusValue;
.super Ljava/lang/Object;
.source "IAGnssCallback.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AGnssStatusValue"
.end annotation


# static fields
.field public static final blacklist AGNSS_DATA_CONNECTED:I = 0x3

.field public static final blacklist AGNSS_DATA_CONN_DONE:I = 0x4

.field public static final blacklist AGNSS_DATA_CONN_FAILED:I = 0x5

.field public static final blacklist RELEASE_AGNSS_DATA_CONN:I = 0x2

.field public static final blacklist REQUEST_AGNSS_DATA_CONN:I = 0x1
