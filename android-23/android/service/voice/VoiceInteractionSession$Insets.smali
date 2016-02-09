.class public final Landroid/service/voice/VoiceInteractionSession$Insets;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Insets"
.end annotation


# static fields
.field public static final TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final TOUCHABLE_INSETS_REGION:I = 0x3


# instance fields
.field public final contentInsets:Landroid/graphics/Rect;

.field public touchableInsets:I

.field public final touchableRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 875
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    #@a
    .line 882
    new-instance v0, Landroid/graphics/Region;

    #@c
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@f
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    #@11
    .line 866
    return-void
.end method
