.class public interface abstract annotation Landroid/content/pm/SigningDetails$CapabilityMergeRule;
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
    name = "CapabilityMergeRule"
.end annotation


# static fields
.field public static final blacklist MERGE_OTHER_CAPABILITY:I = 0x1

.field public static final blacklist MERGE_RESTRICTED_CAPABILITY:I = 0x2

.field public static final blacklist MERGE_SELF_CAPABILITY:I
