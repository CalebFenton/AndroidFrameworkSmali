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
.field public static final whitelist TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final whitelist TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final whitelist TOUCHABLE_INSETS_REGION:I = 0x3


# instance fields
.field public final whitelist contentInsets:Landroid/graphics/Rect;

.field public whitelist touchableInsets:I

.field public final whitelist touchableRegion:Landroid/graphics/Region;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    .line 1055
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    return-void
.end method
