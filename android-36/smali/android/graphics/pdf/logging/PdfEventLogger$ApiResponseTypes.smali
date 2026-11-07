.class public final Landroid/graphics/pdf/logging/PdfEventLogger$ApiResponseTypes;
.super Ljava/lang/Object;
.source "PdfEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/logging/PdfEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiResponseTypes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/logging/PdfEventLogger$ApiResponseTypes$ApiResponseType;
    }
.end annotation


# static fields
.field public static final blacklist FAILURE:I = 0x2

.field public static final blacklist SUCCESS:I = 0x1

.field public static final blacklist UNKNOWN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
