.class public final Landroid/graphics/pdf/logging/PdfEventLogger$PdfLoadResults;
.super Ljava/lang/Object;
.source "PdfEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/logging/PdfEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PdfLoadResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/logging/PdfEventLogger$PdfLoadResults$PdfLoadResult;
    }
.end annotation


# static fields
.field public static final blacklist ERROR:I = 0x2

.field public static final blacklist LOADED:I = 0x1

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist WRONG_PASSWORD:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
