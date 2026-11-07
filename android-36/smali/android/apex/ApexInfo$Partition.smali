.class public interface abstract annotation Landroid/apex/ApexInfo$Partition;
.super Ljava/lang/Object;
.source "ApexInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apex/ApexInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Partition"
.end annotation


# static fields
.field public static final blacklist ODM:B = 0x4t

.field public static final blacklist PRODUCT:B = 0x2t

.field public static final blacklist SYSTEM:B = 0x0t

.field public static final blacklist SYSTEM_EXT:B = 0x1t

.field public static final blacklist VENDOR:B = 0x3t
