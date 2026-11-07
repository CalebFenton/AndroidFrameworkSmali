.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/library_loader/RelroSharingStatus;
.super Ljava/lang/Object;
.source "RelroSharingStatus.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist CORRUPTED_IN_JAVA:I = 0x7

.field public static final blacklist COUNT:I = 0x9

.field public static final blacklist EXTERNAL_LOAD_ADDRESS_RESET:I = 0x8

.field public static final blacklist EXTERNAL_RELRO_FD_NOT_PROVIDED:I = 0x3

.field public static final blacklist EXTERNAL_RELRO_NOT_FOUND:I = 0x4

.field public static final blacklist NOT_ATTEMPTED:I = 0x0

.field public static final blacklist NOT_IDENTICAL:I = 0x2

.field public static final blacklist NO_SHMEM_FUNCTIONS:I = 0x5

.field public static final blacklist REMAP_FAILED:I = 0x6

.field public static final blacklist SHARED:I = 0x1
