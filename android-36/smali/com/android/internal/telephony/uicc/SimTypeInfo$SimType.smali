.class public interface abstract annotation Lcom/android/internal/telephony/uicc/SimTypeInfo$SimType;
.super Ljava/lang/Object;
.source "SimTypeInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SimTypeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SimType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist SIM_TYPE_ESIM:I = 0x2

.field public static final blacklist SIM_TYPE_PHYSICAL:I = 0x1

.field public static final blacklist SIM_TYPE_UNKNOWN:I
