.class public interface abstract annotation Landroid/nearby/NearbyManager$ScanStatus;
.super Ljava/lang/Object;
.source "NearbyManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/NearbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ScanStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist ERROR:I = 0x2

.field public static final blacklist SUCCESS:I = 0x1

.field public static final blacklist UNKNOWN:I
