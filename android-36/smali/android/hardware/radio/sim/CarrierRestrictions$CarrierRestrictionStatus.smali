.class public interface abstract annotation Landroid/hardware/radio/sim/CarrierRestrictions$CarrierRestrictionStatus;
.super Ljava/lang/Object;
.source "CarrierRestrictions.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/CarrierRestrictions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CarrierRestrictionStatus"
.end annotation


# static fields
.field public static final blacklist NOT_RESTRICTED:I = 0x1

.field public static final blacklist RESTRICTED:I = 0x2

.field public static final blacklist UNKNOWN:I
