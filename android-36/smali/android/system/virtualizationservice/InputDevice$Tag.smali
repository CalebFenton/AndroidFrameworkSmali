.class public interface abstract annotation Landroid/system/virtualizationservice/InputDevice$Tag;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Tag"
.end annotation


# static fields
.field public static final blacklist evDev:I = 0x1

.field public static final blacklist keyboard:I = 0x2

.field public static final blacklist mouse:I = 0x3

.field public static final blacklist multiTouch:I = 0x6

.field public static final blacklist singleTouch:I = 0x0

.field public static final blacklist switches:I = 0x4

.field public static final blacklist trackpad:I = 0x5
