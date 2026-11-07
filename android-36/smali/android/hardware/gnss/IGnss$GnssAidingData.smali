.class public interface abstract annotation Landroid/hardware/gnss/IGnss$GnssAidingData;
.super Ljava/lang/Object;
.source "IGnss.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "GnssAidingData"
.end annotation


# static fields
.field public static final blacklist ALL:I = 0xffff

.field public static final blacklist ALMANAC:I = 0x2

.field public static final blacklist CELLDB_INFO:I = 0x8000

.field public static final blacklist EPHEMERIS:I = 0x1

.field public static final blacklist HEALTH:I = 0x40

.field public static final blacklist IONO:I = 0x10

.field public static final blacklist POSITION:I = 0x4

.field public static final blacklist RTI:I = 0x400

.field public static final blacklist SADATA:I = 0x200

.field public static final blacklist SVDIR:I = 0x80

.field public static final blacklist SVSTEER:I = 0x100

.field public static final blacklist TIME:I = 0x8

.field public static final blacklist UTC:I = 0x20
