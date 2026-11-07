.class public interface abstract annotation Landroid/hardware/radio/network/AccessTechnologySpecificInfo$Tag;
.super Ljava/lang/Object;
.source "AccessTechnologySpecificInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Tag"
.end annotation


# static fields
.field public static final blacklist cdmaInfo:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist eutranInfo:I = 0x2

.field public static final blacklist geranDtmSupported:I = 0x4

.field public static final blacklist ngranNrVopsInfo:I = 0x3

.field public static final blacklist noinit:I
