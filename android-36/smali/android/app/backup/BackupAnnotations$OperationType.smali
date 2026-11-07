.class public interface abstract annotation Landroid/app/backup/BackupAnnotations$OperationType;
.super Ljava/lang/Object;
.source "BackupAnnotations.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OperationType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist BACKUP:I = 0x0

.field public static final blacklist RESTORE:I = 0x1

.field public static final blacklist UNKNOWN:I = -0x1
