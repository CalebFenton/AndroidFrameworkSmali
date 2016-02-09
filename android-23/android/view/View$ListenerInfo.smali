.class Landroid/view/View$ListenerInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerInfo"
.end annotation


# instance fields
.field mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnContextClickListener:Landroid/view/View$OnContextClickListener;

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field protected mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnLayoutChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mOnScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

.field private mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static synthetic -get0(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    #@2
    return-object p1
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
