.class public interface abstract annotation Landroid/hardware/gnss/IGnssCallback$GnssSvFlags;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "GnssSvFlags"
.end annotation


# static fields
.field public static final blacklist HAS_ALMANAC_DATA:I = 0x2

.field public static final blacklist HAS_CARRIER_FREQUENCY:I = 0x8

.field public static final blacklist HAS_EPHEMERIS_DATA:I = 0x1

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist USED_IN_FIX:I = 0x4
