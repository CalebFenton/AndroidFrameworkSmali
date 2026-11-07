.class public final Landroid/widget/RemoteViewsProto$CharSequence$Span$Suggestion;
.super Ljava/lang/Object;
.source "RemoteViewsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsProto$CharSequence$Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Suggestion"
.end annotation


# static fields
.field public static final blacklist AUTO_CORRECTION_UNDERLINE_COLOR:J = 0x1050000000aL

.field public static final blacklist AUTO_CORRECTION_UNDERLINE_THICKNESS:J = 0x1020000000bL

.field public static final blacklist EASY_CORRECT_UNDERLINE_COLOR:J = 0x10500000006L

.field public static final blacklist EASY_CORRECT_UNDERLINE_THICKNESS:J = 0x10200000007L

.field public static final blacklist FLAGS:J = 0x10500000002L

.field public static final blacklist GRAMMAR_ERROR_UNDERLINE_COLOR:J = 0x1050000000cL

.field public static final blacklist GRAMMAR_ERROR_UNDERLINE_THICKNESS:J = 0x1020000000dL

.field public static final blacklist HASH_CODE:J = 0x10500000005L

.field public static final blacklist LANGUAGE_TAG:J = 0x10900000004L

.field public static final blacklist LOCALE_STRING_FOR_COMPATIBILITY:J = 0x10900000003L

.field public static final blacklist MISSPELLED_UNDERLINE_COLOR:J = 0x10500000008L

.field public static final blacklist MISSPELLED_UNDERLINE_THICKNESS:J = 0x10200000009L

.field public static final blacklist SUGGESTIONS:J = 0x20900000001L


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViewsProto$CharSequence$Span;)V
    .registers 2
    .param p1, "this$2"    # Landroid/widget/RemoteViewsProto$CharSequence$Span;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
