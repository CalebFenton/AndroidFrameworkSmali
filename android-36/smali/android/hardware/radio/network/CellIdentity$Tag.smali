.class public interface abstract annotation Landroid/hardware/radio/network/CellIdentity$Tag;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/CellIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Tag"
.end annotation


# static fields
.field public static final blacklist cdma:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist gsm:I = 0x1

.field public static final blacklist lte:I = 0x5

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist nr:I = 0x6

.field public static final blacklist tdscdma:I = 0x3

.field public static final blacklist wcdma:I = 0x2
