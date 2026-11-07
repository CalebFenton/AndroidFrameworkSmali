.class public interface abstract annotation Landroid/hardware/radio/sim/SimLockMultiSimPolicy;
.super Ljava/lang/Object;
.source "SimLockMultiSimPolicy.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/SimLockMultiSimPolicy$$;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_SERVICE_ON_ANY_SLOT_TO_UNBLOCK_OTHER_SLOTS:I = 0x6

.field public static final blacklist ACTIVE_SERVICE_ON_SLOT_1_TO_UNBLOCK_OTHER_SLOTS:I = 0x5

.field public static final blacklist ALL_SIMS_MUST_BE_VALID:I = 0x7

.field public static final blacklist APPLY_TO_ALL_SLOTS:I = 0x2

.field public static final blacklist APPLY_TO_ONLY_SLOT_1:I = 0x3

.field public static final blacklist NO_MULTISIM_POLICY:I = 0x0

.field public static final blacklist ONE_VALID_SIM_MUST_BE_PRESENT:I = 0x1

.field public static final blacklist SLOT_POLICY_OTHER:I = 0x8

.field public static final blacklist VALID_SIM_MUST_PRESENT_ON_SLOT_1:I = 0x4
