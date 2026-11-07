.class public interface abstract annotation Landroid/content/pm/SigningDetails$SignatureSchemeVersion;
.super Ljava/lang/Object;
.source "SigningDetails.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SignatureSchemeVersion"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist JAR:I = 0x1

.field public static final blacklist SIGNING_BLOCK_V2:I = 0x2

.field public static final blacklist SIGNING_BLOCK_V3:I = 0x3

.field public static final blacklist SIGNING_BLOCK_V4:I = 0x4

.field public static final blacklist UNKNOWN:I
