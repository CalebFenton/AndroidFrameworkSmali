.class public interface abstract annotation Landroid/hardware/radio/network/CellInfoRatSpecificInfo$Tag;
.super Ljava/lang/Object;
.source "CellInfoRatSpecificInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Tag"
.end annotation


# static fields
.field public static final blacklist cdma:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist gsm:I = 0x0

.field public static final blacklist lte:I = 0x3

.field public static final blacklist nr:I = 0x4

.field public static final blacklist tdscdma:I = 0x2

.field public static final blacklist wcdma:I = 0x1
