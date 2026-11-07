.class public interface abstract annotation Landroid/security/metrics/KeystoreAtomPayload$Tag;
.super Ljava/lang/Object;
.source "KeystoreAtomPayload.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/metrics/KeystoreAtomPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Tag"
.end annotation


# static fields
.field public static final blacklist crashStats:I = 0x8

.field public static final blacklist keyCreationWithAuthInfo:I = 0x2

.field public static final blacklist keyCreationWithGeneralInfo:I = 0x1

.field public static final blacklist keyCreationWithPurposeAndModesInfo:I = 0x3

.field public static final blacklist keyOperationWithGeneralInfo:I = 0x6

.field public static final blacklist keyOperationWithPurposeAndModesInfo:I = 0x5

.field public static final blacklist keystore2AtomWithOverflow:I = 0x4

.field public static final blacklist rkpErrorStats:I = 0x7

.field public static final blacklist storageStats:I
